import InitE.BackendStages.BytesData426
import InitE.BackendStages.BytePiecesData426
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section426_eq : ByteData.bytes426 = [piece426_0].flatten := by
  rw [piece426_0_eq]
  rfl
#print axioms section426_eq
end InitE.BackendStages.BytePieces
