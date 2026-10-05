import InitE.BackendStages.BytesData214
import InitE.BackendStages.BytePiecesData214
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section214_eq : ByteData.bytes214 = [piece214_0, piece214_1].flatten := by
  rw [piece214_0_eq, piece214_1_eq]
  rfl
#print axioms section214_eq
end InitE.BackendStages.BytePieces
