import InitE.BackendStages.BytesData726
import InitE.BackendStages.BytePiecesData726
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section726_eq : ByteData.bytes726 = [piece726_0].flatten := by
  rw [piece726_0_eq]
  rfl
#print axioms section726_eq
end InitE.BackendStages.BytePieces
