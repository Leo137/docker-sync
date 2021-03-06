RSpec.shared_examples 'a synchronized directory' do |container_dir, options = {}|
  options[:within] ||= 1.second

  it 'synchronizes on startup' do
    expect(host_app_path).to be_in_sync_with(container_dir).in_container('docker_sync_specs-sync')
  end

  it 'synchronizes files additions' do
    File.write(File.join(host_app_path, 'new_file.txt'), 'Hi, I am a new file')
    expect(host_app_path).to be_in_sync_with(container_dir).in_container('docker_sync_specs-sync').within(options[:within])
  end

  it 'synchronizes files changes' do
    File.write(File.join(host_app_path, 'README.md'), 'Some new content', mode: 'a+')
    expect(host_app_path).to be_in_sync_with(container_dir).in_container('docker_sync_specs-sync').within(options[:within])
  end

  it 'synchronizes files deletions' do
    File.delete(File.join(host_app_path, 'README.md'))
    expect(host_app_path).to be_in_sync_with(container_dir).in_container('docker_sync_specs-sync').within(options[:within])
  end
end
