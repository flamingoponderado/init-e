import Tools.GenSmallStages
import InitE.SmallStages.Oracles718
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 718 InitE.WordStages.source718.2.1 InitE.WordStages.source718.2.2 InitE.SmallStages.Oracles718.oracle718
