import InitE.BackendStages.BytesData198
import InitE.BackendStages.BytePiecesData198
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section198_eq : ByteData.bytes198 = [piece198_0].flatten := by
  rw [piece198_0_eq]
  rfl
#print axioms section198_eq
end InitE.BackendStages.BytePieces
