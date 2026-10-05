import InitE.BackendStages.BytesData647
import InitE.BackendStages.BytePiecesData647
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section647_eq : ByteData.bytes647 = [piece647_0, piece647_1].flatten := by
  rw [piece647_0_eq, piece647_1_eq]
  rfl
#print axioms section647_eq
end InitE.BackendStages.BytePieces
