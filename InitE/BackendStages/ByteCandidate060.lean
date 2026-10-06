import InitE.BackendStages.BytePiecesData394
import InitE.BackendStages.BytePiecesData395
import InitE.BackendStages.BytePiecesData396
import InitE.BackendStages.BytePiecesData397
import InitE.BackendStages.BytePiecesData398
import InitE.BackendStages.BytePiecesData399
import InitE.BackendStages.BytePiecesData400
import InitE.BackendStages.BytePiecesData401
import InitE.BackendStages.BytePiecesData402
import InitE.BackendStages.BytePiecesData403
import InitECandidate.Bytes060
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate060_eq : InitECandidate.bytes060 = [piece394_1, piece395_0, piece396_0, piece397_0, piece398_0, piece399_0, piece400_0, piece401_0, piece402_0, piece403_0].flatten := by
  rw [piece394_1_eq, piece395_0_eq, piece396_0_eq, piece397_0_eq, piece398_0_eq, piece399_0_eq, piece400_0_eq, piece401_0_eq, piece402_0_eq, piece403_0_eq]
  rfl
#print axioms candidate060_eq
end InitE.BackendStages.BytePieces
