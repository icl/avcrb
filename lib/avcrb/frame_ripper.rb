module Avcrb
  class FrameRipper
    attr_accessor :source, :destination, :offset, :resolution

    def initialize source, options={}
      @source = source
      @destination = options.delete(:destination) || "thumbnail"
      @offset = options[:offset] || 0.0
      @resolution = options.delete(:resolution)
    end

    def rip
      command =  %Q[ffmpeg -y ]
      command << %Q[-i "#{@source}" ]
      command << %Q[-s #{@resolution}] if @resolution
      command << %Q[ -vframes 1]
      command << %Q[ -ss #{@offset} ]

      command << %Q[  "#{@destination}.jpg"]
      system command
    end
  end
end
