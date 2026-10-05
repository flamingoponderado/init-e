import InitE.BackendStages.BytesData831
import InitE.BackendStages.BytePiecesData831
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section831_eq : ByteData.bytes831 = [piece831_0].flatten := by
  rw [piece831_0_eq]
  rfl
#print axioms section831_eq
end InitE.BackendStages.BytePieces
