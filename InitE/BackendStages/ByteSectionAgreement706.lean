import InitE.BackendStages.BytesData706
import InitE.BackendStages.BytePiecesData706
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section706_eq : ByteData.bytes706 = [piece706_0, piece706_1].flatten := by
  rw [piece706_0_eq, piece706_1_eq]
  rfl
#print axioms section706_eq
end InitE.BackendStages.BytePieces
