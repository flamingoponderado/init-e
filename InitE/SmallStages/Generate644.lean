import Tools.GenSmallStages
import InitE.SmallStages.Oracles644
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 644 InitE.WordStages.source644.2.1 InitE.WordStages.source644.2.2 InitE.SmallStages.Oracles644.oracle644
