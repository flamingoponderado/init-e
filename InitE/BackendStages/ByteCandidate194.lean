import InitE.BackendStages.BytePiecesData820
import InitE.BackendStages.BytePiecesData821
import InitE.BackendStages.BytePiecesData822
import InitE.BackendStages.BytePiecesData823
import InitECandidate.Bytes194
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate194_eq : InitECandidate.bytes194 = [piece820_1, piece821_0, piece822_0, piece823_0].flatten := by
  rw [piece820_1_eq, piece821_0_eq, piece822_0_eq, piece823_0_eq]
  rfl
#print axioms candidate194_eq
end InitE.BackendStages.BytePieces
