import InitE.BackendStages.BytesData288
import InitE.BackendStages.BytePiecesData288
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section288_eq : ByteData.bytes288 = [piece288_0].flatten := by
  rw [piece288_0_eq]
  rfl
#print axioms section288_eq
end InitE.BackendStages.BytePieces
