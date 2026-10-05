import InitE.BackendStages.BytesData823
import InitE.BackendStages.BytePiecesData823
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section823_eq : ByteData.bytes823 = [piece823_0, piece823_1].flatten := by
  rw [piece823_0_eq, piece823_1_eq]
  rfl
#print axioms section823_eq
end InitE.BackendStages.BytePieces
