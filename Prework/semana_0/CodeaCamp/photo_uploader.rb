class PhotoUploader < CarrierWave::Uploader::Base
  # ...
  include CarrierWave::MiniMagick

  # Que tipo de strorage usará este uploader
  storage :file

  def store_dir
    # Como y donde guardar el archivo ...
    "/images" + [version_name, "default.png"].compact.join('_')
  end

  # Versiones del archivo ...
  version :thumb do
    process :resize_to_fit => [50, 50]
  end

  #Que extensiones vas a aceptar
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
