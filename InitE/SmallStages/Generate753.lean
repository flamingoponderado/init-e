import Tools.GenSmallStages
import InitE.SmallStages.Oracles753
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 753 InitE.WordStages.source753.2.1 InitE.WordStages.source753.2.2 InitE.SmallStages.Oracles753.oracle753
