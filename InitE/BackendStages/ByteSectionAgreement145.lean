import InitE.BackendStages.BytesData145
import InitE.BackendStages.BytePiecesData145
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section145_eq : ByteData.bytes145 = [piece145_0].flatten := by
  rw [piece145_0_eq]
  rfl
#print axioms section145_eq
end InitE.BackendStages.BytePieces
