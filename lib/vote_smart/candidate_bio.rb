module VoteSmart
  
  class CandidateBio < Common
    
    # Returns basic bio details on a candidate
    def self.get_bio can_id, &block
      request("CandidateBio.getBio", {"candidateId" => can_id}, &block)
    end

    # expands on getBio() by expanding the education, profession, political, orgMembership, and congMembership elements
    def self.get_detailed_bio can_id, &block
      request("CandidateBio.getDetailedBio", {"candidateId" => can_id}, &block)
    end

    # Returns the extended bio for each candidate that has one
    def self.get_addl_bio can_id
      request("CandidateBio.getAddlBio", "candidateId" => can_id)
    end
    
  end
end
