import InitE.BackendStages.BytesData559
import InitE.BackendStages.BytePiecesData559
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section559_eq : ByteData.bytes559 = [piece559_0, piece559_1].flatten := by
  rw [piece559_0_eq, piece559_1_eq]
  rfl
#print axioms section559_eq
end InitE.BackendStages.BytePieces
