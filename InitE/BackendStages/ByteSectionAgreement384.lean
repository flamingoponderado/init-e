import InitE.BackendStages.BytesData384
import InitE.BackendStages.BytePiecesData384
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section384_eq : ByteData.bytes384 = [piece384_0].flatten := by
  rw [piece384_0_eq]
  rfl
#print axioms section384_eq
end InitE.BackendStages.BytePieces
