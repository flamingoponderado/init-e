import InitE.BackendStages.BytesData730
import InitE.BackendStages.BytePiecesData730
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section730_eq : ByteData.bytes730 = [piece730_0, piece730_1].flatten := by
  rw [piece730_0_eq, piece730_1_eq]
  rfl
#print axioms section730_eq
end InitE.BackendStages.BytePieces
