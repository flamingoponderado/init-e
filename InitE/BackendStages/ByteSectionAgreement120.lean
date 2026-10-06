import InitE.BackendStages.BytesData120
import InitE.BackendStages.BytePiecesData120
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section120_eq : ByteData.bytes120 = [piece120_0].flatten := by
  rw [piece120_0_eq]
  rfl
#print axioms section120_eq
end InitE.BackendStages.BytePieces
