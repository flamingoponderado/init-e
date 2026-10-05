import InitE.BackendStages.BytesData236
import InitE.BackendStages.BytePiecesData236
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section236_eq : ByteData.bytes236 = [piece236_0, piece236_1].flatten := by
  rw [piece236_0_eq, piece236_1_eq]
  rfl
#print axioms section236_eq
end InitE.BackendStages.BytePieces
