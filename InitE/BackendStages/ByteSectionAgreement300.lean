import InitE.BackendStages.BytesData300
import InitE.BackendStages.BytePiecesData300
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section300_eq : ByteData.bytes300 = [piece300_0].flatten := by
  rw [piece300_0_eq]
  rfl
#print axioms section300_eq
end InitE.BackendStages.BytePieces
