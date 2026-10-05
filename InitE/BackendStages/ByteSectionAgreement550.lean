import InitE.BackendStages.BytesData550
import InitE.BackendStages.BytePiecesData550
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section550_eq : ByteData.bytes550 = [piece550_0].flatten := by
  rw [piece550_0_eq]
  rfl
#print axioms section550_eq
end InitE.BackendStages.BytePieces
