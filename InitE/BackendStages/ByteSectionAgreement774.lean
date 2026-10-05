import InitE.BackendStages.BytesData774
import InitE.BackendStages.BytePiecesData774
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section774_eq : ByteData.bytes774 = [piece774_0, piece774_1].flatten := by
  rw [piece774_0_eq, piece774_1_eq]
  rfl
#print axioms section774_eq
end InitE.BackendStages.BytePieces
