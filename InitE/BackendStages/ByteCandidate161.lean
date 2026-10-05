import InitE.BackendStages.BytePiecesData746
import InitE.BackendStages.BytePiecesData747
import InitE.BackendStages.BytePiecesData748
import InitE.BackendStages.BytePiecesData749
import InitE.BackendStages.BytePiecesData750
import InitE.BackendStages.BytePiecesData751
import InitE.BackendStages.BytePiecesData752
import InitE.BackendStages.BytePiecesData753
import InitECandidate.Bytes161
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate161_eq : InitECandidate.bytes161 = [piece746_1, piece747_0, piece748_0, piece749_0, piece750_0, piece751_0, piece752_0, piece753_0].flatten := by
  rw [piece746_1_eq, piece747_0_eq, piece748_0_eq, piece749_0_eq, piece750_0_eq, piece751_0_eq, piece752_0_eq, piece753_0_eq]
  rfl
#print axioms candidate161_eq
end InitE.BackendStages.BytePieces
