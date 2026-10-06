import InitE.BackendStages.BytesData100
import InitE.BackendStages.BytePiecesData100
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section100_eq : ByteData.bytes100 = [piece100_0].flatten := by
  rw [piece100_0_eq]
  rfl
#print axioms section100_eq
end InitE.BackendStages.BytePieces
