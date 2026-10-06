import InitE.BackendStages.BytesData764
import InitE.BackendStages.BytePiecesData764
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section764_eq : ByteData.bytes764 = [piece764_0].flatten := by
  rw [piece764_0_eq]
  rfl
#print axioms section764_eq
end InitE.BackendStages.BytePieces
