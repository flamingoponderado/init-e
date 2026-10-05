import InitE.BackendStages.BytesData376
import InitE.BackendStages.BytePiecesData376
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section376_eq : ByteData.bytes376 = [piece376_0].flatten := by
  rw [piece376_0_eq]
  rfl
#print axioms section376_eq
end InitE.BackendStages.BytePieces
