import InitE.BackendStages.BytesData324
import InitE.BackendStages.BytePiecesData324
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section324_eq : ByteData.bytes324 = [piece324_0].flatten := by
  rw [piece324_0_eq]
  rfl
#print axioms section324_eq
end InitE.BackendStages.BytePieces
