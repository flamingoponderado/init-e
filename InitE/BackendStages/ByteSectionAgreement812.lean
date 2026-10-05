import InitE.BackendStages.BytesData812
import InitE.BackendStages.BytePiecesData812
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section812_eq : ByteData.bytes812 = [piece812_0, piece812_1].flatten := by
  rw [piece812_0_eq, piece812_1_eq]
  rfl
#print axioms section812_eq
end InitE.BackendStages.BytePieces
