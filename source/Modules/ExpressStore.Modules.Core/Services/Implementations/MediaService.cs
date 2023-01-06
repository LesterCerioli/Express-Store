using ExpressStore.Infrastructure.Data;
using ExpressStore.Modules.Core.Models;
using ExpressStore.Modules.Core.Services.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Modules.Core.Services.Implementations
{
    public class MediaService : IMediaService
    {
        private readonly IRepository<Media> _mediaRepository;
        private readonly IStorageService _storageService;

        public MediaService(IRepository<Media> mediaRepository, IStorageService storageService)
        {
            _mediaRepository = mediaRepository;
            _storageService = storageService;
        }

        public string GetMediaUrl(Media media)
        {
            if (media == null)
            {
                return GetMediaUrl("no-image.png");
            }

            return GetMediaUrl(media.FileName);
        }

        public string GetMediaUrl(string fileName)
        {
            return _storageService.GetMediaUrl(fileName);
        }

        public string GetThumbnailUrl(Media media)
        {
            return GetMediaUrl(media);
        }

        public Task SaveMediaAsync(Stream mediaBinaryStream, string fileName, string mimeType = null)
        {
            return _storageService.SaveMediaAsync(mediaBinaryStream, fileName, mimeType);
        }

        public Task DeleteMediaAsync(Media media)
        {
            _mediaRepository.Remove(media);
            return DeleteMediaAsync(media.FileName);
        }

        public Task DeleteMediaAsync(string fileName)
        {
            return _storageService.DeleteMediaAsync(fileName);
        }
    }
}
