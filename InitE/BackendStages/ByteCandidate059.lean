import InitE.BackendStages.BytePiecesData388
import InitE.BackendStages.BytePiecesData389
import InitE.BackendStages.BytePiecesData390
import InitE.BackendStages.BytePiecesData391
import InitE.BackendStages.BytePiecesData392
import InitE.BackendStages.BytePiecesData393
import InitE.BackendStages.BytePiecesData394
import InitECandidate.Bytes059
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate059_eq : InitECandidate.bytes059 = [piece388_1, piece389_0, piece390_0, piece391_0, piece392_0, piece393_0, piece394_0].flatten := by
  rw [piece388_1_eq, piece389_0_eq, piece390_0_eq, piece391_0_eq, piece392_0_eq, piece393_0_eq, piece394_0_eq]
  rfl
#print axioms candidate059_eq
end InitE.BackendStages.BytePieces
