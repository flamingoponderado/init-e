import Tools.GenSmallStages
import InitE.SmallStages.Oracles374
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 374 InitE.WordStages.source374.2.1 InitE.WordStages.source374.2.2 InitE.SmallStages.Oracles374.oracle374
