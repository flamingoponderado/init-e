import InitE.BackendStages.BytesData827
import InitE.BackendStages.BytePiecesData827
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section827_eq : ByteData.bytes827 = [piece827_0].flatten := by
  rw [piece827_0_eq]
  rfl
#print axioms section827_eq
end InitE.BackendStages.BytePieces
