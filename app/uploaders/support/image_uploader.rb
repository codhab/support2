module Support
  class ImageUploader < CarrierWave::Uploader::Base

    storage :file

    def store_dir
      "uploads/archive/images"
    end

    def filename
      if original_filename
        @name ||= Digest::MD5.hexdigest(File.dirname(current_path))
        "#{@name}.#{file.extension}"
      end
    end

  end
end