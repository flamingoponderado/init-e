import InitE.BackendStages.BytesData577
import InitE.BackendStages.BytePiecesData577
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section577_eq : ByteData.bytes577 = [piece577_0].flatten := by
  rw [piece577_0_eq]
  rfl
#print axioms section577_eq
end InitE.BackendStages.BytePieces
