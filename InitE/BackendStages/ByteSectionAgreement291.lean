import InitE.BackendStages.BytesData291
import InitE.BackendStages.BytePiecesData291
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section291_eq : ByteData.bytes291 = [piece291_0].flatten := by
  rw [piece291_0_eq]
  rfl
#print axioms section291_eq
end InitE.BackendStages.BytePieces
