import java.util.ArrayList;

public class Blockchain {
    private ArrayList<Block> chain;
    private int difficulty;

    public Blockchain() {
        chain = new ArrayList<Block>();
        difficulty = 4;
        // Create genesis block
        addBlock(new Block(0, "Genesis Block", "0"));
    }

    public Block getLatestBlock() {
        return chain.get(chain.size() - 1);
    }

    public void addBlock(Block newBlock) {
        if (chain.size() > 0) {
            newBlock = new Block(chain.size(), newBlock.getData(), getLatestBlock().getHash());
        }
        newBlock.mineBlock(difficulty);
        chain.add(newBlock);
    }

    public boolean isChainValid() {
        for (int i = 1; i < chain.size(); i++) {
            Block currentBlock = chain.get(i);
            Block previousBlock = chain.get(i - 1);

            // Check if current block's hash is valid
            if (!currentBlock.getHash().equals(currentBlock.calculateHash())) {
                return false;
            }

            // Check if current block points to correct previous hash
            if (!currentBlock.getPreviousHash().equals(previousBlock.getHash())) {
                return false;
            }
        }
        return true;
    }

    public ArrayList<Block> getChain() {
        return chain;
    }
}
