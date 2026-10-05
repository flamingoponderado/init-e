import InitE.BackendStages.BytesData700
import InitE.BackendStages.BytePiecesData700
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section700_eq : ByteData.bytes700 = [piece700_0, piece700_1].flatten := by
  rw [piece700_0_eq, piece700_1_eq]
  rfl
#print axioms section700_eq
end InitE.BackendStages.BytePieces
