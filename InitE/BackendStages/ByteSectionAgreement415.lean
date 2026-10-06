import InitE.BackendStages.BytesData415
import InitE.BackendStages.BytePiecesData415
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section415_eq : ByteData.bytes415 = [piece415_0].flatten := by
  rw [piece415_0_eq]
  rfl
#print axioms section415_eq
end InitE.BackendStages.BytePieces
