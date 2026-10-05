import InitE.BackendStages.BytesData716
import InitE.BackendStages.BytePiecesData716
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section716_eq : ByteData.bytes716 = [piece716_0].flatten := by
  rw [piece716_0_eq]
  rfl
#print axioms section716_eq
end InitE.BackendStages.BytePieces
