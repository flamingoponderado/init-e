import InitE.BackendStages.BytesData522
import InitE.BackendStages.BytePiecesData522
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section522_eq : ByteData.bytes522 = [piece522_0].flatten := by
  rw [piece522_0_eq]
  rfl
#print axioms section522_eq
end InitE.BackendStages.BytePieces
