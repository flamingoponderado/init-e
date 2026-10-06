import InitE.BackendStages.BytesData292
import InitE.BackendStages.BytePiecesData292
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section292_eq : ByteData.bytes292 = [piece292_0].flatten := by
  rw [piece292_0_eq]
  rfl
#print axioms section292_eq
end InitE.BackendStages.BytePieces
