import InitE.BackendStages.BytesData67
import InitE.BackendStages.BytePiecesData67
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section67_eq : ByteData.bytes67 = [piece67_0].flatten := by
  rw [piece67_0_eq]
  rfl
#print axioms section67_eq
end InitE.BackendStages.BytePieces
