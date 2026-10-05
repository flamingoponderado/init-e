import InitE.BackendStages.BytesData518
import InitE.BackendStages.BytePiecesData518
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section518_eq : ByteData.bytes518 = [piece518_0].flatten := by
  rw [piece518_0_eq]
  rfl
#print axioms section518_eq
end InitE.BackendStages.BytePieces
