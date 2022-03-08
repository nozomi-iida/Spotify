//
//  NewReleaseCollectionViewCell.swift
//  Spotify
//
//  Created by iida nozomi on 2022/01/16.
//

import UIKit

class NewReleaseCollectionViewCell: UICollectionViewCell {
    static let identifier = "NewReleasesVeiwCell"
    
    private let albumCoverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "photo")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let albumNameLabel: UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.numberOfLines = 0
        return label
    }()
    
    private let numberofTracksLabel: UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .thin )
        label.numberOfLines = 0
        return label
    }()
    
    private let artistNameLabel: UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        contentView.addSubview(albumCoverImageView)
        contentView.addSubview(albumNameLabel)
        contentView.addSubview(artistNameLabel)
        contentView.clipsToBounds = true
        contentView.addSubview(numberofTracksLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let imageSize: CGFloat = contentView.height - 10

        let albumlabelSize = albumNameLabel.sizeThatFits(
            CGSize(
                width: contentView.width - imageSize - 10,
                height: contentView.height - 10
            )
        )
        artistNameLabel.sizeToFit()
        numberofTracksLabel.sizeToFit()
        
        // image
        albumCoverImageView.frame = CGRect(x: 5, y: 5, width: imageSize, height: imageSize)
        
        // album name label
        let albumLabelheight = min(60, albumlabelSize.height)
        
        albumNameLabel.frame = CGRect(
            x: albumCoverImageView.right + 10,
            y: 5,
            width: albumlabelSize.width,
            height: albumLabelheight
        )
        
        artistNameLabel.frame = CGRect(
            x: albumCoverImageView.right + 10,
            y: albumNameLabel.bottom,
            width: contentView.width - albumCoverImageView.right - 5,
            height: 30
        )
        
        numberofTracksLabel.frame = CGRect(
            x: albumCoverImageView.right + 10,
            y: albumCoverImageView.bottom - 50,
            width: numberofTracksLabel.width,
            height: 44
        )
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        albumNameLabel.text = nil
        albumNameLabel.text = nil
        numberofTracksLabel.text = nil
        albumCoverImageView.image = nil
    }
    
    func configure(with viewModel: NewReleasesCellViewModel) {
        albumNameLabel.text = viewModel.name
        artistNameLabel.text = viewModel.artistName
        numberofTracksLabel.text = "Tracks: \(viewModel.numberOfTracks)"
        albumCoverImageView.sd_setImage(with: viewModel.artworkURL, completed: nil)
    }
}
