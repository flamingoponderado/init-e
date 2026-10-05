import InitE.BackendStages.BytesData463
import InitE.BackendStages.BytePiecesData463
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section463_eq : ByteData.bytes463 = [piece463_0].flatten := by
  rw [piece463_0_eq]
  rfl
#print axioms section463_eq
end InitE.BackendStages.BytePieces
