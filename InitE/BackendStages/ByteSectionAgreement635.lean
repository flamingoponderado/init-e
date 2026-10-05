import InitE.BackendStages.BytesData635
import InitE.BackendStages.BytePiecesData635
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section635_eq : ByteData.bytes635 = [piece635_0].flatten := by
  rw [piece635_0_eq]
  rfl
#print axioms section635_eq
end InitE.BackendStages.BytePieces
