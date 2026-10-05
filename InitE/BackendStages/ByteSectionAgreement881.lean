import InitE.BackendStages.BytesData881
import InitE.BackendStages.BytePiecesData881
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section881_eq : ByteData.bytes881 = [piece881_0, piece881_1].flatten := by
  rw [piece881_0_eq, piece881_1_eq]
  rfl
#print axioms section881_eq
end InitE.BackendStages.BytePieces
