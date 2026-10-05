import InitE.BackendStages.BytesData85
import InitE.BackendStages.BytePiecesData85
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section85_eq : ByteData.bytes85 = [piece85_0].flatten := by
  rw [piece85_0_eq]
  rfl
#print axioms section85_eq
end InitE.BackendStages.BytePieces
