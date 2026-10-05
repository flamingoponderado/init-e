import InitE.BackendStages.BytesData642
import InitE.BackendStages.BytePiecesData642
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section642_eq : ByteData.bytes642 = [piece642_0, piece642_1, piece642_2].flatten := by
  rw [piece642_0_eq, piece642_1_eq, piece642_2_eq]
  rfl
#print axioms section642_eq
end InitE.BackendStages.BytePieces
