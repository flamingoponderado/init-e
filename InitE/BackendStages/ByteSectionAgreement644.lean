import InitE.BackendStages.BytesData644
import InitE.BackendStages.BytePiecesData644
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section644_eq : ByteData.bytes644 = [piece644_0].flatten := by
  rw [piece644_0_eq]
  rfl
#print axioms section644_eq
end InitE.BackendStages.BytePieces
