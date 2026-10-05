import InitE.BackendStages.BytesData692
import InitE.BackendStages.BytePiecesData692
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section692_eq : ByteData.bytes692 = [piece692_0, piece692_1, piece692_2, piece692_3].flatten := by
  rw [piece692_0_eq, piece692_1_eq, piece692_2_eq, piece692_3_eq]
  rfl
#print axioms section692_eq
end InitE.BackendStages.BytePieces
