class Comment < ApplicationRecord
  belongs_to :article

  VALID_STATUSES = %w[public private archived]

  validates :status, inclusion: { in: VALID_STATUSES}


end
