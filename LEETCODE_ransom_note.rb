# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}

# Time complex - O(n)
# Space complex - O(1) bcz englis only has max 26chars, so hash stores max 52 chars only
def can_construct(ransom_note, magazine)
    ransom_note_count = Hash.new(0)

    ransom_note.each_char do |c|
        ransom_note_count[c] = ransom_note_count[c] + 1
    end

    magazine.each_char do |c|
        ransom_note_count[c] = ransom_note_count[c] - 1
    end

    return ransom_note_count.values.all? { |count| count <= 0 }
end
