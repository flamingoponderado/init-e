import InitE.BackendStages.BytesData92
import InitE.BackendStages.BytePiecesData92
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section92_eq : ByteData.bytes92 = [piece92_0].flatten := by
  rw [piece92_0_eq]
  rfl
#print axioms section92_eq
end InitE.BackendStages.BytePieces
