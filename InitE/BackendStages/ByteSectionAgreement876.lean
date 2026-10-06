import InitE.BackendStages.BytesData876
import InitE.BackendStages.BytePiecesData876
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section876_eq : ByteData.bytes876 = [piece876_0].flatten := by
  rw [piece876_0_eq]
  rfl
#print axioms section876_eq
end InitE.BackendStages.BytePieces
