import InitE.BackendStages.BytesData470
import InitE.BackendStages.BytePiecesData470
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section470_eq : ByteData.bytes470 = [piece470_0].flatten := by
  rw [piece470_0_eq]
  rfl
#print axioms section470_eq
end InitE.BackendStages.BytePieces
